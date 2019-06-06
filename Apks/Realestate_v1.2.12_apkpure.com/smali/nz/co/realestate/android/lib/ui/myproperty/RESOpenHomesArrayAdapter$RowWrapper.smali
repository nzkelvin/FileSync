.class public Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
.source "RESOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowWrapper"
.end annotation


# instance fields
.field private final mDateTextView:Landroid/widget/TextView;

.field private final mMapButton:Landroid/view/View;

.field private final mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;-><init>(Landroid/view/View;)V

    .line 120
    sget v0, Lnz/co/realestate/android/lib/R$id;->time_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mTimeTextView:Landroid/widget/TextView;

    .line 121
    sget v0, Lnz/co/realestate/android/lib/R$id;->date_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mDateTextView:Landroid/widget/TextView;

    .line 122
    sget v0, Lnz/co/realestate/android/lib/R$id;->map_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mMapButton:Landroid/view/View;

    .line 123
    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 113
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 113
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 113
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mMapButton:Landroid/view/View;

    return-object v0
.end method
