function show(bt) {
    let f1 = document.getElementById('f1');
    let f2 = document.getElementById('f2');
    let f3 = document.getElementById('f3');
    let f4 = document.getElementById('f4');

    let b1 = document.getElementById('b1');
    let b2 = document.getElementById('b2');
    let b3 = document.getElementById('b3');
    let b4 = document.getElementById('b4');

    switch (bt) {
        case 'b1':
            b1.classList.add('active');
            b2.classList.remove('active');
            b3.classList.remove('active');
            b4.classList.remove('active');

            f1.style.display = 'block';
            f2.style.display = 'none';
            f3.style.display = 'none';
            f4.style.display = 'none';
            break;
        case 'b2':
            b2.classList.add('active');
            b1.classList.remove('active');
            b3.classList.remove('active');
            b4.classList.remove('active');

            f2.style.display = 'block';
            f1.style.display = 'none';
            f3.style.display = 'none';
            f4.style.display = 'none';
            break;
        case 'b3':
            b3.classList.add('active');
            b2.classList.remove('active');
            b1.classList.remove('active');
            b4.classList.remove('active');

            f3.style.display = 'block';
            f2.style.display = 'none';
            f1.style.display = 'none';
            f4.style.display = 'none';
            break;
        case 'b4':
            b4.classList.add('active');
            b2.classList.remove('active');
            b3.classList.remove('active');
            b1.classList.remove('active');

            f4.style.display = 'block';
            f2.style.display = 'none';
            f3.style.display = 'none';
            f1.style.display = 'none';
            break;
    
        default:
            break;
    }
}