.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;
.source "JSACyclicViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListCyclicViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter<TT;TV;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;-><init>()V

    .line 140
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->mItems:Ljava/util/List;

    .line 141
    return-void
.end method


# virtual methods
.method public createView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter<TT;TV;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->createView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract createView(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter<TT;TV;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateView(Landroid/view/View;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter<TT;TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;->updateView(Landroid/view/View;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public abstract updateView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation
.end method
