.class public Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;
.implements Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeDialog"
.end annotation


# instance fields
.field private final mFromIndex:I

.field private mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

.field private final mFromTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mToIndex:I

.field private mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

.field private final mToTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 596
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {p2, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromTitles:Ljava/util/List;

    .line 597
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {p3, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToTitles:Ljava/util/List;

    .line 598
    iput p4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromIndex:I

    .line 599
    iput p5, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToIndex:I

    .line 600
    return-void
.end method

.method private updateFromValue(I)V
    .locals 3
    .param p1, "toValue"    # I

    .prologue
    .line 640
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    .line 644
    .local v0, "fromValue":I
    add-int/lit8 v1, v0, -0x1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 645
    :cond_0
    return-void
.end method

.method private updateToValue(I)V
    .locals 3
    .param p1, "fromValue"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    .line 652
    .local v0, "toValue":I
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMaxValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method public getFromValue()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    return v0
.end method

.method public getToValue()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 603
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 604
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lnz/co/realestate/android/lib/R$layout;->price_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "view":Landroid/view/View;
    sget v2, Lnz/co/realestate/android/lib/R$id;->price_from_numberpicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .line 607
    sget v2, Lnz/co/realestate/android/lib/R$id;->price_to_numberpicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .line 609
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromTitles:Ljava/util/List;

    const-class v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setDisplayedValues([Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToTitles:Ljava/util/List;

    const-class v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setDisplayedValues([Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, v5}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 613
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, v5}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 615
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromIndex:I

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 616
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToIndex:I

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 618
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setOnValueChangedListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;)V

    .line 619
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setOnValueChangedListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;)V

    .line 621
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setOnScrollListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;)V

    .line 622
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setOnScrollListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;)V

    .line 624
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->setView(Landroid/view/View;)V

    .line 626
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 627
    return-void
.end method

.method public onScrollStateChange(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;I)V
    .locals 1
    .param p1, "picker"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p2, "scrollState"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->updateToValue(I)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->updateFromValue(I)V

    goto :goto_0
.end method

.method public onValueChange(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;II)V
    .locals 1
    .param p1, "picker"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 630
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->updateToValue(I)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mToNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->mFromNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->updateFromValue(I)V

    goto :goto_0
.end method
