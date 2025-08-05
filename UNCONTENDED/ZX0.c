

void ZX0_decompress (unsigned int destination, unsigned int source)//found in $5ED8
{
    //  HL: source address (compressed data)
    //  DE: destination address (decompressing)
    zx0_destination = destination;
    zx0_source = source;
    dzx0_standard();
}
