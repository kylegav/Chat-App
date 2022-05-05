import socket
import struct
import mcastsend


def main():
    MCAST_GRP = '224.3.0.1'
    MCAST_PORT = 5953

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    sock.bind((MCAST_GRP, MCAST_PORT))

    mreq = struct.pack("=4sl", socket.inet_aton(MCAST_GRP), socket.INADDR_ANY)

    sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)

    group_ip = []

    while True:

        try:
            data, addr = sock.recvfrom(1024)

            if data == b'JOIN' and addr[0] not in group_ip:
                group_ip.append(addr[0])
                print(f'Joining {addr[0]} to multicast')
                mcastsend.main(str(group_ip))
                print(group_ip)

            if data == b'EXIT':
                group_ip.remove(addr[0])
                print(f'Removing {addr[0]} from multicast')
                mcastsend.main(str(group_ip))
                print(group_ip)




        except socket.error as e:
            print('Error')


if __name__ == '__main__':
    main()
