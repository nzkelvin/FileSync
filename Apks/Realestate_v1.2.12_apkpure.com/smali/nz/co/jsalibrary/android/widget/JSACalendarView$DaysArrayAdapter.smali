.class public Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DaysArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        "Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 452
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->getSelectedIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    move v0, v1

    .line 462
    .local v0, "selectedIndex":Z
    :goto_0
    invoke-static {}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->access$000()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->access$100(Ljava/util/Calendar;I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    :goto_1
    return v2

    .end local v0    # "selectedIndex":Z
    :cond_1
    move v0, v2

    .line 461
    goto :goto_0

    .restart local v0    # "selectedIndex":Z
    :cond_2
    move v2, v1

    .line 462
    goto :goto_1
.end method

.method protected updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;I)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;
    .param p2, "position"    # I

    .prologue
    .line 455
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;->getDayTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void
.end method

.method protected updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;
    .param p2, "item"    # Ljava/lang/Integer;

    .prologue
    .line 458
    return-void
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;I)V
    .locals 0

    .prologue
    .line 448
    check-cast p1, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;I)V

    return-void
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 448
    check-cast p1, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;Ljava/lang/Integer;)V

    return-void
.end method
