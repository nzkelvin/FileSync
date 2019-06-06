.class public final Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;
.source "RESPropertyInspectionImagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_IMAGES:Ljava/lang/String; = "images"

.field private static final EXTRA_INDEX:Ljava/lang/String; = "index"

.field private static final EXTRA_SECTION:Ljava/lang/String; = "section"


# instance fields
.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionTextView:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mImages:Ljava/util/List;

    return-object v0
.end method

.method public static putBundle(Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I
    .param p3, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "images"

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "index"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v0, "section"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v2, Lnz/co/realestate/android/lib/R$layout;->property_inspection_images:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    sget v2, Lnz/co/realestate/android/lib/R$id;->position_textview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mPositionTextView:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "images"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mImages:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "index":I
    sget v2, Lnz/co/realestate/android/lib/R$id;->viewpager:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 72
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 73
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "section"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "section":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->updateView(I)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->finish()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;->onResume()V

    .line 100
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 101
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockActivity;->onStart()V

    .line 95
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION_PHOTOS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected updateView(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mPositionTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
