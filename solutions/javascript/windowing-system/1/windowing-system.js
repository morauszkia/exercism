// @ts-check
export function Size(width = 80, height = 60) {
  this.width = width;
  this.height = height;
}

Size.prototype.resize = function(width, height) {
  this.width = width;
  this.height = height;
}

export function Position(x = 0, y = 0) {
  this.x = x;
  this.y = y;
}

Position.prototype.move = function(newX, newY) {
  this.x = newX;
  this.y = newY;
}

export class ProgramWindow {
  screenSize = new Size(800, 600);
  size = new Size();
  position = new Position();

  resize(newSize) {
    const { width, height } = newSize;
    const maxWidth = this.screenSize.width - this.position.x;
    const maxHeight = this.screenSize.height - this.position.y;
    const newWidth = width > maxWidth ? maxWidth : 
      width < 1 ? 1 : width;
    const newHeight = height > maxHeight ? maxHeight : 
      height < 1 ? 1 : height;
    this.size.resize(newWidth, newHeight)
  }

  move(newPosition) {
    const { x, y } = newPosition;
    const maxX = this.screenSize.width - this.size.width;
    const maxY = this.screenSize.height - this.size.height;
    const newX = x > maxX ? maxX : 
      x < 0 ? 0 : x;
    const newY = y > maxY ? maxY :
      y < 0 ? 0 : y;
    this.position.move(newX, newY)
  }
}

export function changeWindow(programWindow) {
  programWindow.resize(new Size(400, 300));
  programWindow.move(new Position(100, 150));
  return programWindow;
}