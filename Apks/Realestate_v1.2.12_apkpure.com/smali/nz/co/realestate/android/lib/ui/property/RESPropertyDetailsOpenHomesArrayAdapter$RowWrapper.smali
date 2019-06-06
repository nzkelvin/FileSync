.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESPropertyDetailsOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowWrapper"
.end annotation


# instance fields
.field private mAddTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 152
    sget v0, Lnz/co/realestate/android/lib/R$id;->time_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->mTimeTextView:Landroid/widget/TextView;

    .line 153
    sget v0, Lnz/co/realestate/android/lib/R$id;->add_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->mAddTextView:Landroid/widget/TextView;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 146
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->mTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 146
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->mAddTextView:Landroid/widget/TextView;

    return-object v0
.end method
