.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;
.super Ljava/lang/Object;
.source "JSANumberPickerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 1
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 1898
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->MODE_PRESS:I

    .line 1903
    const/4 v0, 0x2

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 1923
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->cancel()V

    .line 1924
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mMode:I

    .line 1925
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mManagedButton:I

    .line 1926
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1927
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 1930
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->cancel()V

    .line 1931
    const/4 v0, 0x2

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mMode:I

    .line 1932
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mManagedButton:I

    .line 1933
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->post(Ljava/lang/Runnable;)Z

    .line 1934
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1909
    iput v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mMode:I

    .line 1910
    iput v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mManagedButton:I

    .line 1911
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1912
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1002(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1914
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    .line 1916
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1202(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1917
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1918
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1300(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    .line 1920
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1938
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1972
    :goto_0
    return-void

    .line 1940
    :pswitch_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1942
    :pswitch_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1002(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1943
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    goto :goto_0

    .line 1946
    :pswitch_2
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1202(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1947
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1300(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    goto :goto_0

    .line 1952
    :pswitch_3
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1954
    :pswitch_4
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .line 1956
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 1955
    invoke-virtual {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1958
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1002(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1959
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    goto :goto_0

    .line 1962
    :pswitch_5
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1963
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .line 1964
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 1963
    invoke-virtual {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1966
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1202(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    .line 1967
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1300(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1940
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1952
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
