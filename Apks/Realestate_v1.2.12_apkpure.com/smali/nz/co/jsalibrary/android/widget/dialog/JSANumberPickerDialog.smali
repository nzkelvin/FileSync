.class public Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSANumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog$DialogFragment;
    }
.end annotation


# instance fields
.field private mDisplayedValues:[Ljava/lang/String;

.field private mMaxValue:I

.field private mMinValue:I

.field private mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

.field private mSoftInputEnabled:Z

.field private mValue:I

.field private mWrapSelectorWheel:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "displayedValues"    # [Ljava/lang/String;
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 66
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 67
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setDisplayedValues([Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public getDisplayedValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no displayed values set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    .line 151
    .local v0, "value":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value outside of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "value":I
    :cond_2
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mValue:I

    goto :goto_0

    .line 152
    .restart local v0    # "value":I
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMaxValue()I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMaxValue:I

    goto :goto_0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMinValue()I

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMinValue:I

    goto :goto_0
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->getDisplayedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mValue:I

    goto :goto_0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getWrapSelectorWheel()Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mWrapSelectorWheel:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 79
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lnz/co/jsalibrary/android/R$layout;->jsa__numberpicker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "view":Landroid/view/View;
    sget v3, Lnz/co/jsalibrary/android/R$id;->numberpicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iput-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .line 81
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setView(Landroid/view/View;)V

    .line 83
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMinValue:I

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMinValue(I)V

    .line 84
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMaxValue:I

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMaxValue(I)V

    .line 85
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setDisplayedValues([Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mWrapSelectorWheel:Z

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 87
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setSoftInputEnabled(Z)V

    .line 88
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mValue:I

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 90
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    :cond_2
    :goto_0
    return-void

    .line 105
    :cond_3
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mDisplayedValues:[Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .prologue
    .line 116
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMaxValue:I

    if-ne p1, v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMaxValue(I)V

    .line 118
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMaxValue:I

    goto :goto_0
.end method

.method public setMinValue(I)V
    .locals 1
    .param p1, "minValue"    # I

    .prologue
    .line 110
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMinValue:I

    if-ne p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMinValue(I)V

    .line 112
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mMinValue:I

    goto :goto_0
.end method

.method public setNumberValues([Ljava/lang/String;)V
    .locals 0
    .param p1, "numberValues"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->setDisplayedValues([Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setSoftInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    if-ne p1, v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setSoftInputEnabled(Z)V

    .line 136
    :cond_1
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mSoftInputEnabled:Z

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 122
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mValue:I

    if-ne p1, v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValue(I)V

    .line 124
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mValue:I

    goto :goto_0
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 128
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mWrapSelectorWheel:Z

    if-ne p1, v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mNumberPicker:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 130
    :cond_1
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSANumberPickerDialog;->mWrapSelectorWheel:Z

    goto :goto_0
.end method
