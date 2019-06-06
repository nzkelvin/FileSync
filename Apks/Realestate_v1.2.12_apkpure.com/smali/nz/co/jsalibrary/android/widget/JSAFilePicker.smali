.class public Lnz/co/jsalibrary/android/widget/JSAFilePicker;
.super Landroid/widget/LinearLayout;
.source "JSAFilePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;,
        Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;,
        Lnz/co/jsalibrary/android/widget/JSAFilePicker$FileComparator;,
        Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSE:I = 0x0

.field public static final ACTION_PICK_DIRECTORY:I = 0x2

.field public static final ACTION_PICK_FILE:I = 0x1


# instance fields
.field protected mAction:I

.field protected mActionButton:Landroid/view/View;

.field protected mCurrentDirectory:Ljava/io/File;

.field protected mDirectoryImageResource:I

.field protected mEmptyView:Landroid/view/View;

.field protected mFileFilterPattern:Ljava/util/regex/Pattern;

.field protected mFileImageResource:I

.field protected mHighestDirectory:Ljava/io/File;

.field protected mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

.field protected mListView:Landroid/widget/ListView;

.field protected mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

.field protected mPathTextView:Landroid/widget/TextView;

.field protected mRowResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->setOrientation(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    .line 75
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->setOrientation(I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected createListAdapter()V
    .locals 6

    .prologue
    .line 215
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mRowResource:I

    const/4 v3, 0x0

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileImageResource:I

    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mDirectoryImageResource:I

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    .line 216
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    return-void
.end method

.method public getCurrentDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getFileFilterPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getHighestDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    return-object v0
.end method

.method protected initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker_jsaAction:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    .line 86
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker_jsaRow:I

    sget v3, Lnz/co/jsalibrary/android/R$layout;->jsa__file_picker_row:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mRowResource:I

    .line 87
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker_jsaFileImage:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileImageResource:I

    .line 88
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker_jsaDirectoryImage:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mDirectoryImageResource:I

    .line 89
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFilePicker_jsaFileFilterPattern:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "mFileFilterPatternString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method protected initialiseViews()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 117
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$1;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$1;-><init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mActionButton:Landroid/view/View;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$2;-><init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public jumpToParentDirectory()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 256
    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    .line 257
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-interface {v2, v3}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;->onCurrentDirectoryChange(Ljava/io/File;)V

    .line 258
    :cond_2
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 259
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    .line 260
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onActionButtonClick()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->getSelectedIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v1, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;->onFilePick(Ljava/io/File;)V

    goto :goto_0

    .line 245
    :cond_2
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;->onDirectoryPick(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 100
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mPathTextView:Landroid/widget/TextView;

    .line 101
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    .line 102
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mActionButton:Landroid/view/View;

    .line 103
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mEmptyView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mActionButton:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android:id/list and com.example.project:id/button must be included in the layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->initialiseViews()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 107
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    .line 108
    return-void
.end method

.method protected onListItemClick(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 224
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v1, p1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 226
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    .line 228
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-interface {v1, v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;->onCurrentDirectoryChange(Ljava/io/File;)V

    .line 229
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    .line 236
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v1, p1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->setSelectedIndex(I)V

    .line 232
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 135
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    .line 136
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    .line 137
    return-void
.end method

.method public setCurrentDirectory(Ljava/io/File;)Z
    .locals 3
    .param p1, "value"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    if-ne p1, v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    .line 291
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-interface {v1, v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;->onCurrentDirectoryChange(Ljava/io/File;)V

    .line 292
    :cond_2
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 293
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDirectoryImage(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 153
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mDirectoryImageResource:I

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 155
    return-void
.end method

.method public setFileFilterPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "value"    # Ljava/util/regex/Pattern;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    if-ne p1, v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 309
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateView()V

    goto :goto_0
.end method

.method public setFileImage(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 144
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileImageResource:I

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 146
    return-void
.end method

.method public setHighestDirectory(Ljava/io/File;)Z
    .locals 3
    .param p1, "value"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 276
    :cond_1
    :goto_0
    return v0

    .line 273
    :cond_2
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    .line 274
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mHighestDirectory:Ljava/io/File;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->setCurrentDirectory(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public setListener(Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    .prologue
    .line 375
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListener:Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;

    .line 376
    return-void
.end method

.method public setRow(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 162
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mRowResource:I

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->updateListAdapter(Z)V

    .line 164
    return-void
.end method

.method protected updateListAdapter(Z)V
    .locals 5
    .param p1, "recreateListAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->createListAdapter()V

    .line 197
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    new-instance v4, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;

    invoke-direct {v4, p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;-><init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 199
    .local v0, "empty":Z
    :goto_0
    if-nez v0, :cond_3

    new-instance v3, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FileComparator;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FileComparator;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    :cond_3
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 205
    :cond_4
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->clear()V

    .line 206
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->clearSelectedIndices()V

    .line 207
    if-nez v0, :cond_5

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    .line 208
    :cond_5
    return-void

    .end local v0    # "empty":Z
    :cond_6
    move v0, v2

    .line 198
    goto :goto_0
.end method

.method protected updateView()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 171
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    new-instance v6, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;

    invoke-direct {v6, p0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;-><init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 172
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_6

    :cond_0
    move v0, v3

    .line 175
    .local v0, "empty":Z
    :goto_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mPathTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mPathTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mCurrentDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_1
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mEmptyView:Landroid/view/View;

    if-nez v4, :cond_7

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_8

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_3
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mActionButton:Landroid/view/View;

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    if-ne v6, v3, :cond_5

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mListAdapter:Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->getSelectedIndex()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_5

    :cond_4
    move v5, v2

    :cond_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void

    .end local v0    # "empty":Z
    :cond_6
    move v0, v2

    .line 172
    goto :goto_0

    .restart local v0    # "empty":Z
    :cond_7
    move v4, v5

    .line 178
    goto :goto_1

    :cond_8
    move v4, v5

    .line 181
    goto :goto_2
.end method
