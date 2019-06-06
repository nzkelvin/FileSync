.class public Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
.super Ljava/lang/Object;
.source "RESInspectionOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public mCategoryAnalytics:Ljava/lang/String;

.field public mCategoryId:I

.field public mCategoryTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # I
    .param p2, "categoryTitle"    # Ljava/lang/String;
    .param p3, "categoryAnalytics"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryId:I

    .line 219
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryTitle:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryAnalytics:Ljava/lang/String;

    .line 221
    return-void
.end method
