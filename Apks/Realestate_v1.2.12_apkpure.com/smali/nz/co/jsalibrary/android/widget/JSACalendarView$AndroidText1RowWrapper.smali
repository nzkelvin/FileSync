.class Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidText1RowWrapper"
.end annotation


# instance fields
.field protected mDayTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 555
    return-void
.end method


# virtual methods
.method public getDayTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;->mDayTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;->mRow:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;->mDayTextView:Landroid/widget/TextView;

    .line 559
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;->mDayTextView:Landroid/widget/TextView;

    return-object v0
.end method
