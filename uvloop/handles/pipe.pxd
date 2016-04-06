cdef class UVPipeServer(UVStreamServer):

    cdef bind(self, str path)
    cdef open(self, int sockfd)

    @staticmethod
    cdef UVPipeServer new(Loop loop, object protocol_factory, Server server)


cdef class UVPipeTransport(UVTransport):

    @staticmethod
    cdef UVPipeTransport new(Loop loop, object protocol, Server server)


cdef class UVReadPipeTransport(UVReadTransport):

    @staticmethod
    cdef UVReadPipeTransport new(Loop loop, object protocol, Server server)


cdef class UVWritePipeTransport(UVWriteTransport):

    @staticmethod
    cdef UVWritePipeTransport new(Loop loop, object protocol, Server server)
