#include "../vgmstream.h"

#ifdef VGM_USE_G719
#include "coding.h"
#include "../util.h"
#include "../stack_alloc.h"

void decode_g719(VGMSTREAM * vgmstream,
        sample * outbuf, int channelspacing, int32_t samples_to_do, int channel) {
    VGMSTREAMCHANNEL *ch = &vgmstream->ch[channel];
    g719_codec_data *data = vgmstream->codec_data;
    g719_codec_data *ch_data = &data[channel];
    int i;

    if (0 == vgmstream->samples_into_block)
    {
        VARDECL(int16_t,code_buffer);
        ALLOC(code_buffer, vgmstream->interleave_block_size / 2, int16_t);
        vgmstream->ch[channel].streamfile->read(ch->streamfile, (uint8_t*)code_buffer, ch->offset, vgmstream->interleave_block_size);
        g719_decode_frame(ch_data->handle, code_buffer, ch_data->buffer);
    }

    for (i = 0; i < samples_to_do; i++)
    {
        outbuf[i*channelspacing] = ch_data->buffer[vgmstream->samples_into_block+i];
    }
}

#endif
