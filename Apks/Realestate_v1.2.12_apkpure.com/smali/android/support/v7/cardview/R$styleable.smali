.class public final Landroid/support/v7/cardview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_cardBackgroundColor:I = 0x0

.field public static final CardView_cardCornerRadius:I = 0x1

.field public static final CardView_cardElevation:I = 0x2

.field public static final CardView_cardMaxElevation:I = 0x3

.field public static final CardView_cardPreventCornerOverlap:I = 0x5

.field public static final CardView_cardUseCompatPadding:I = 0x4

.field public static final CardView_contentPadding:I = 0x6

.field public static final CardView_contentPaddingBottom:I = 0xa

.field public static final CardView_contentPaddingLeft:I = 0x7

.field public static final CardView_contentPaddingRight:I = 0x8

.field public static final CardView_contentPaddingTop:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    return-void

    :array_0
    .array-data 4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
        0x7f0100ae
        0x7f0100af
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method