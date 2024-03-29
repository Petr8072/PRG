
programe QuickSort;
uses Crt;
Var 
	pivot, l_ptr, r_ptr : Integer;
	numbers : Array of Integer; 
	left : Integer; 
	right : Integer

Begin
	l_ptr := left;
	r_ptr := right;
	pivot := numbers[left];

	While (left < right) do
	Begin
		While ((numbers[right] >= pivot) AND (left < right)) do
			right := right - 1;

		If (left <> right) Then
		Begin
			numbers[left] := numbers[right];
			left := left + 1;
		End;

		While ((numbers[left] <= pivot) AND (left < right)) do
			left := left + 1;

		If (left <> right) Then
		Begin
			numbers[right] := numbers[left];
			right := right - 1;
		End;
	End;

	numbers[left] := pivot;
	pivot := left;
	left := l_ptr;
	right := r_ptr;

	If (left < pivot) Then
		QSort(numbers, left, pivot-1);

	If (right > pivot) Then
		QSort(numbers, pivot+1, right);
End;

Procedure QuickSort(numbers : Array of Integer; size : Integer);
Begin
	QSort(numbers, 0, size-1);
End.
