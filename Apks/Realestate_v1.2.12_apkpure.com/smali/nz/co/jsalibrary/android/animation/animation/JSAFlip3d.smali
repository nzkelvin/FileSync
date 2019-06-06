.class public Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
.super Landroid/view/animation/Animation;
.source "JSAFlip3d.java"


# instance fields
.field protected mCamera:Landroid/graphics/Camera;

.field protected final mCenterX:F

.field protected final mCenterY:F

.field protected final mFromDegrees:F

.field protected final mToDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 20
    iput p1, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mFromDegrees:F

    .line 21
    iput p2, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mToDegrees:F

    .line 22
    iput p3, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCenterX:F

    .line 23
    iput p4, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCenterY:F

    .line 24
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 32
    iget v4, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mFromDegrees:F

    .line 33
    .local v4, "fromDegrees":F
    iget v6, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 35
    .local v3, "degrees":F
    iget v1, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCenterX:F

    .line 36
    .local v1, "centerX":F
    iget v2, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCenterY:F

    .line 37
    .local v2, "centerY":F
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCamera:Landroid/graphics/Camera;

    .line 39
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 41
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 42
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 43
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 46
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 47
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 28
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->mCamera:Landroid/graphics/Camera;

    .line 29
    return-void
.end method
