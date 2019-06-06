.class Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "JSAAnimatingPagerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;-><init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 249
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 254
    return-void
.end method
