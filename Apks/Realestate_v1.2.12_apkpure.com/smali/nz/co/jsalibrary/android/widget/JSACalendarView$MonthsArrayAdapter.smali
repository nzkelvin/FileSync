.class public Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MonthsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/lang/String;",
        "Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "objects"    # [Ljava/lang/String;

    .prologue
    .line 509
    const-class v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 510
    return-void
.end method


# virtual methods
.method protected updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;->getDayTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    check-cast p1, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;Ljava/lang/String;)V

    return-void
.end method
