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
    
    const newWidth = Math.max(1, Math.min(width, maxWidth));
    const newHeight = Math.max(1, Math.min(height, maxHeight));
    
    this.size.resize(newWidth, newHeight)
  }

  move(newPosition) {
    const { x, y } = newPosition;
    
    const maxX = this.screenSize.width - this.size.width;
    const maxY = this.screenSize.height - this.size.height;
    
    const newX = Math.max(0, Math.min(x, maxX));
    const newY = Math.max(0, Math.min(y, maxY));
    
    this.position.move(newX, newY)
  }
}

export function changeWindow(programWindow) {
  // Move window to top left corner to ensure being able to resize window
  programWindow.move(new Position());
  
  programWindow.resize(new Size(400, 300));
  programWindow.move(new Position(100, 150));
  
  return programWindow;
}