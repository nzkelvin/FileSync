.class public Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;
.super Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DaysRowWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;-><init>(Landroid/view/View;)V

    return-void
.end method
