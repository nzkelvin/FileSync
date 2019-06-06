.class public Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
.super Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.source "JSASoundBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSASoundBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueuedMediaPlayer"
.end annotation


# instance fields
.field private mAssetPaths:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private mFiles:[Ljava/io/File;

.field private mIndex:I

.field private mPaths:[Ljava/lang/String;

.field private mResourceIds:[I

.field private mUris:[Landroid/net/Uri;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method protected start(Landroid/content/Context;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 657
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 658
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 659
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 660
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 661
    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 662
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 664
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 666
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 667
    return-void
.end method

.method protected start(Landroid/content/Context;[Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 695
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 696
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 697
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 698
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 699
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 700
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 702
    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 704
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 705
    return-void
.end method

.method protected start(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 683
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 684
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 685
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 686
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 687
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 688
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 689
    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 690
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 691
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 692
    return-void
.end method

.method protected start([Ljava/io/File;)V
    .locals 1
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 631
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 632
    :cond_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 633
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 634
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 635
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 636
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 638
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    .line 639
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 640
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 641
    return-void
.end method

.method protected start([Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fileDescriptors"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 644
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 645
    :cond_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 646
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 647
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 648
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 649
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 650
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 651
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 653
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 654
    return-void
.end method

.method protected start([Ljava/lang/String;)V
    .locals 1
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 670
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 671
    :cond_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    .line 672
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    .line 673
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 674
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    .line 675
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    .line 676
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    .line 677
    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    .line 678
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 679
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    .line 680
    return-void
.end method

.method protected startNext()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 708
    iget v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    .line 711
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-gt v1, v2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 712
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-le v1, v2, :cond_0

    .line 713
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-le v1, v2, :cond_0

    .line 714
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-le v1, v2, :cond_0

    .line 715
    :cond_4
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-le v1, v2, :cond_0

    .line 716
    :cond_5
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    if-le v1, v2, :cond_0

    .line 718
    :cond_6
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->reset()V

    .line 721
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    if-eqz v0, :cond_8

    .line 722
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFiles:[Ljava/io/File;

    iget v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget-object v0, v0, v1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 723
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 724
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 741
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->prepare()V

    .line 742
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start()V

    .line 743
    const/4 v0, 0x1

    goto :goto_0

    .line 725
    :cond_8
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    if-eqz v0, :cond_9

    .line 726
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mFileDescriptors:[Ljava/io/FileDescriptor;

    iget v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 727
    :cond_9
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    if-eqz v0, :cond_a

    .line 728
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mResourceIds:[I

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 729
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 730
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    .line 731
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_a
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 732
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mPaths:[Ljava/lang/String;

    iget v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :cond_b
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 734
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mAssetPaths:[Ljava/lang/String;

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 735
    .restart local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 736
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    .line 737
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_c
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 738
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mUris:[Landroid/net/Uri;

    iget v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1
.end method
