.class public Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;
.super Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
.source "JSAGeometryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAGeometryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V
    .locals 6
    .param p1, "from"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p2, "to"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 221
    iget-wide v0, p2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v4, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    sub-double/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;)V
    .locals 0
    .param p1, "v"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V

    .line 218
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    return-object v0
.end method
