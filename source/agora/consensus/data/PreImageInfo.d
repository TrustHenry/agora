/*******************************************************************************

    Contains definition for the `PreImageInfo` struct,
    which is used to communicate new pre-image informations between nodes.

    Copyright:
        Copyright (c) 2019-2021 BOSAGORA Foundation
        All rights reserved.

    License:
        MIT License. See LICENSE for details.

*******************************************************************************/

module agora.consensus.data.PreImageInfo;

import agora.common.Types;
import agora.crypto.Hash;

/*******************************************************************************

    Define pre-image information

*******************************************************************************/

public struct PreImageInfo
{
    /// The key for the enrollment, used to look the commitment up
    public Hash utxo;

    /// The value of the pre-image at the height from Genesis
    public Hash hash;

    /// The Height of the block that this pre-image is for
    public Height height;

    /***************************************************************************

        Reduce the height and adjust `hash` accordingly

        This method hashes `this.hash` `value` times, and offset `this.height`
        by the same amount.

        Params:
          value = The amount to offset the pre-image by.
                  Must be lesser or equal to `this.height`.

        Returns:
          A reference to itself for easy chaining.

    ***************************************************************************/

    public ref PreImageInfo adjust (size_t value) return @safe nothrow @nogc
    {
        assert(this.height >= value);
        while (value > 0)
        {
            this.hash = this.hash.hashFull();
            this.height -= 1;
            --value;
        }
        return this;
    }
}

unittest
{
    import agora.serialization.Serializer;

    testSymmetry!PreImageInfo();

    Hash utxo = Hash("0x000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f" ~
                     "1b60a8ce26f000000000019d6689c085ae165831e934ff763ae46a2" ~
                     "a6c172b3f1b60a8ce26f");
    Hash hash = Hash("0X4A5E1E4BAAB89F3A32518A88C31BC87F618F76673E2CC77AB212" ~
                     "7B7AFDEDA33B4A5E1E4BAAB89F3A32518A88C31BC87F618F76673E" ~
                     "2CC77AB2127B7AFDEDA33B");
    PreImageInfo img = {
        utxo: utxo,
        hash: hash,
        height: Height(42),
    };
    testSymmetry(img);
}
