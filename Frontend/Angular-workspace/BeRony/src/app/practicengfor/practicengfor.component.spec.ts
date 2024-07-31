import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PracticengforComponent } from './practicengfor.component';

describe('PracticengforComponent', () => {
  let component: PracticengforComponent;
  let fixture: ComponentFixture<PracticengforComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PracticengforComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PracticengforComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
