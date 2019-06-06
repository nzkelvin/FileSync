.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESPropertyInspectionNotesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 38
    sget v0, Lnz/co/realestate/android/lib/R$id;->textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;->mTextView:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter$Wrapper;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method
