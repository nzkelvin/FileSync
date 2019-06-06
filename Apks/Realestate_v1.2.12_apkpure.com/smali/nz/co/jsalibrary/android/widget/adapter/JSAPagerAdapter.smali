.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "JSAPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter$SimplePagerAdapter;
    }
.end annotation


# instance fields
.field protected mObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 14
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 26
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 27
    return-void
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public unregisterObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
