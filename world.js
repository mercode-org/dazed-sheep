"use strict";


class World
{
  constructor(size)
  {
    this.size=size;
    this.data = new Buffer(4+size.x*size.y*size.z);
    this.data.fill(0);
    this.data.writeInt32BE(this.size.x*this.size.y*this.size.z,0);
  }

  setBlock(pos,block)
  {
    this.data.writeUInt8(block,4+pos.x+this.size.y*(pos.z+this.size.x*pos.y))
  }

  getBlock(pos,block)
  {
    return this.data.readUInt8(4+pos.x+this.size.y*(pos.z+this.size.x*pos.y))
  }

  dump(){
    return this.data;
  }
}

module.exports=World;