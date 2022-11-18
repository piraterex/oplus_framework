.class final Landroid/app/assist/AssistStructure$ViewNodeText;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeText"
.end annotation


# instance fields
.field greylist-max-o mHint:Ljava/lang/String;

.field greylist-max-o mLineBaselines:[I

.field greylist-max-o mLineCharOffsets:[I

.field greylist-max-o mText:Ljava/lang/CharSequence;

.field greylist-max-o mTextBackgroundColor:I

.field greylist-max-o mTextColor:I

.field greylist-max-o mTextSelectionEnd:I

.field greylist-max-o mTextSelectionStart:I

.field greylist-max-o mTextSize:F

.field greylist-max-o mTextStyle:I


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 441
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 449
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;Z)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 441
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 458
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 462
    if-nez p2, :cond_0

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    .line 470
    :cond_0
    return-void
.end method


# virtual methods
.method greylist-max-o isSimple()Z
    .locals 2

    .line 452
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;ZZ)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z
    .param p3, "writeSensitive"    # Z

    .line 473
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 474
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 475
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    if-nez p2, :cond_1

    .line 478
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 482
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 483
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    :cond_1
    return-void
.end method
