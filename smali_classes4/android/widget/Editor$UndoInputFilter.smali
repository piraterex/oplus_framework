.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final greylist-max-o MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final greylist-max-o MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final greylist-max-o mEditor:Landroid/widget/Editor;

.field private greylist-max-o mExpanding:Z

.field private greylist-max-o mHasComposition:Z

.field private greylist-max-o mIsUserEdit:Z

.field private greylist-max-o mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 7342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7343
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 7344
    return-void
.end method

.method private greylist-max-o canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 7494
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7496
    return v1

    .line 7499
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7501
    return v1

    .line 7507
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 7514
    :cond_2
    if-ne p2, p3, :cond_3

    if-ne p5, p6, :cond_3

    .line 7516
    return v1

    .line 7519
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 7509
    :cond_4
    :goto_0
    return v1
.end method

.method private greylist-max-o getLastEdit()Landroid/widget/Editor$EditOperation;
    .locals 4

    .line 7451
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7452
    .local v0, "um":Landroid/content/UndoManager;
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor$EditOperation;

    return-object v1
.end method

.method private greylist-max-o handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I
    .param p7, "shouldCreateSeparateState"    # Z

    .line 7432
    move-object v0, p0

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7434
    :cond_0
    if-eqz p7, :cond_1

    .line 7435
    const/4 v1, 0x1

    .local v1, "mergeMode":I
    goto :goto_1

    .line 7437
    .end local v1    # "mergeMode":I
    :cond_1
    const/4 v1, 0x2

    .restart local v1    # "mergeMode":I
    goto :goto_1

    .line 7433
    .end local v1    # "mergeMode":I
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 7440
    .restart local v1    # "mergeMode":I
    :goto_1
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    .line 7441
    .local v8, "newText":Ljava/lang/String;
    invoke-static/range {p4 .. p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    .line 7442
    .local v9, "oldText":Ljava/lang/String;
    new-instance v10, Landroid/widget/Editor$EditOperation;

    iget-object v3, v0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move-object v2, v10

    move-object v4, v9

    move/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 7444
    .local v2, "edit":Landroid/widget/Editor$EditOperation;
    iget-boolean v3, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7445
    return-void

    .line 7447
    :cond_3
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 7448
    return-void
.end method

.method private static greylist-max-o isComposition(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 7523
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7524
    return v1

    .line 7527
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    .line 7528
    .local v0, "text":Landroid/text/Spannable;
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 7529
    .local v2, "composeBegin":I
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 7530
    .local v3, "composeEnd":I
    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private greylist-max-o isInTextWatcher()Z
    .locals 2

    .line 7534
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7535
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 7536
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7535
    :goto_0
    return v1
.end method

.method private greylist-max-o recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "mergeMode"    # I

    .line 7461
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7462
    .local v0, "um":Landroid/content/UndoManager;
    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7463
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    .line 7464
    .local v1, "lastEdit":Landroid/widget/Editor$EditOperation;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7467
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 7468
    :cond_0
    if-nez p2, :cond_1

    .line 7472
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    .line 7473
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2

    .line 7477
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7478
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 7479
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 7485
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7486
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 7488
    :goto_0
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7489
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 7490
    return-void
.end method


# virtual methods
.method public greylist-max-o beginBatchEdit()V
    .locals 1

    .line 7365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7366
    return-void
.end method

.method public greylist-max-o endBatchEdit()V
    .locals 1

    .line 7370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7371
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7372
    return-void
.end method

.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 7383
    move-object v8, p0

    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 7384
    return-object v9

    .line 7387
    :cond_0
    iget-boolean v10, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7388
    .local v10, "hadComposition":Z
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7389
    iget-boolean v11, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7390
    .local v11, "wasExpanding":Z
    const/4 v0, 0x0

    .line 7391
    .local v0, "shouldCreateSeparateState":Z
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-eq v1, v2, :cond_2

    .line 7392
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7393
    if-eqz v10, :cond_2

    if-eq v1, v11, :cond_2

    .line 7394
    const/4 v0, 0x1

    move v12, v0

    goto :goto_1

    .line 7399
    :cond_2
    move v12, v0

    .end local v0    # "shouldCreateSeparateState":Z
    .local v12, "shouldCreateSeparateState":Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 7400
    return-object v9
.end method

.method greylist-max-o freezeLastEdit()V
    .locals 2

    .line 7404
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7405
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    .line 7406
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-eqz v0, :cond_0

    .line 7407
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V

    .line 7409
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 7410
    return-void
.end method

.method public greylist-max-o restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7358
    return-void
.end method

.method public greylist-max-o saveInstanceState(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7347
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7348
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7349
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7350
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7351
    return-void
.end method
