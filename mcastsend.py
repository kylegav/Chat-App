import socket
import sys
import mcastrecv


def basic_send(message_to_send):
  MCAST_GRP = '224.3.0.1'
  MCAST_PORT = 5953
  sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
  sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)

  sock.sendto(message_to_send.encode(), (MCAST_GRP, MCAST_PORT))

  mcastrecv.main()

def main(argv):
  msg = argv[1]
  basic_send(msg)


if __name__ == '__main__':
  main(sys.argv)

