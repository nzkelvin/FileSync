.class public Lnz/co/jsalibrary/android/widget/JSAObservableScrollView;
.super Landroid/widget/ScrollView;
.source "JSAObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangedListener:Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 33
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAObservableScrollView;->mOnScrollChangedListener:Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAObservableScrollView;->mOnScrollChangedListener:Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 36
    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;

    .prologue
    .line 39
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAObservableScrollView;->mOnScrollChangedListener:Lnz/co/jsalibrary/android/widget/JSAObservableScrollView$OnScrollChangedListener;

    .line 40
    return-void
.end method
