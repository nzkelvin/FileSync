.class Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewTagContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppliedJobItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJobItem;"
        }
    .end annotation
.end field

.field private mDesiredJobItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJobItem;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;TJobItem;)V"
        }
    .end annotation

    .prologue
    .line 1714
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer<TJobItem;>;"
    .local p1, "desiredJobItem":Ljava/lang/Object;, "TJobItem;"
    .local p2, "appJobItem":Ljava/lang/Object;, "TJobItem;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1715
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->mDesiredJobItem:Ljava/lang/Object;

    .line 1716
    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->mAppliedJobItem:Ljava/lang/Object;

    .line 1717
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 1710
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer<TJobItem;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    .prologue
    .line 1710
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->mDesiredJobItem:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    .prologue
    .line 1710
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->mAppliedJobItem:Ljava/lang/Object;

    return-object v0
.end method
