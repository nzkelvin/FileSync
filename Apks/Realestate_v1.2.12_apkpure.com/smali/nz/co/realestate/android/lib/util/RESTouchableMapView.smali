.class public Lnz/co/realestate/android/lib/util/RESTouchableMapView;
.super Lcom/google/android/gms/maps/MapView;
.source "RESTouchableMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

.field private mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 32
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 57
    :pswitch_0
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mTouched:Z

    if-nez v0, :cond_0

    .line 58
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mTouched:Z

    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    invoke-interface {v0, v2}, Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;->onTouchedChange(Z)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mTouched:Z

    if-eqz v0, :cond_0

    .line 63
    iput-boolean v1, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mTouched:Z

    .line 64
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;->onTouchedChange(Z)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mTouched:Z

    return v0
.end method

.method public setOnTouchedChangeListener(Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    .prologue
    .line 39
    iput-object p1, p0, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->mListener:Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;

    .line 40
    return-void
.end method
