.class Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;
.super Ljava/lang/Object;
.source "JSATabManager.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyTabFactory"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;->mContext:Landroid/content/Context;

    .line 373
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 376
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 378
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 379
    return-object v0
.end method
