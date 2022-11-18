.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private final greylist-max-o mInputText:Landroid/widget/EditText;

.field private greylist-max-o mPosted:Z

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "inputText"    # Landroid/widget/EditText;

    .line 2395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2396
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 2397
    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 1

    .line 2410
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2412
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2414
    :cond_0
    return-void
.end method

.method public greylist-max-o post(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2400
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 2401
    iput p2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2403
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-nez v0, :cond_0

    .line 2404
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 2405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2407
    :cond_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 2418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2419
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2420
    return-void
.end method
