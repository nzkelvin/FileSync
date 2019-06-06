.class public Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "YearsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        "Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "objects"    # [Ljava/lang/Integer;

    .prologue
    .line 533
    const-class v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 534
    return-void
.end method


# virtual methods
.method protected updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;
    .param p2, "item"    # Ljava/lang/Integer;

    .prologue
    .line 537
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;->getDayTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    check-cast p1, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;Ljava/lang/Integer;)V

    return-void
.end method
