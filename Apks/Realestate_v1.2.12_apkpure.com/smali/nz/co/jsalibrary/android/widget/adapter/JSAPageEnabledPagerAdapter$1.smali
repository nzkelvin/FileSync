.class Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;
.super Ljava/lang/Object;
.source "JSAPageEnabledPagerAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->buildDefaultZoomImageViewListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;IF)Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;

.field final synthetic val$maxZoomFactor:F

.field final synthetic val$position:I

.field final synthetic val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;ILnz/co/jsalibrary/android/widget/JSAZoomImageView;F)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;

    iput p2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$position:I

    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iput p4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$maxZoomFactor:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsGestureInProgressChange(Z)V
    .locals 0
    .param p1, "isInProgress"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public onIsGestureInProgressHorizontalChange(Z)V
    .locals 2
    .param p1, "isInProgress"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->this$0:Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$position:I

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->isInProgressChangeHandler(IZ)V

    .line 72
    return-void
.end method

.method public onIsGestureInProgressVerticalChange(Z)V
    .locals 0
    .param p1, "isInProgress"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public onSizeChanged(IIII)Z
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v3

    iget v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;->val$maxZoomFactor:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setScaleFactor(FFF)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
