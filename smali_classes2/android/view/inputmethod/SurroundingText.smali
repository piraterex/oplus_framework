.class public final Landroid/view/inputmethod/SurroundingText;
.super Ljava/lang/Object;
.source "SurroundingText.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOffset:I

.field private final blacklist mSelectionEnd:I

.field private final blacklist mSelectionStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Landroid/view/inputmethod/SurroundingText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SurroundingText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SurroundingText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "offset"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/view/inputmethod/SurroundingText;->copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    .line 79
    iput p2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    .line 80
    iput p3, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    .line 81
    iput p4, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    .line 82
    return-void
.end method

.method private static blacklist copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 175
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    :cond_1
    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    :cond_2
    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOffset()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return v0
.end method

.method public whitelist getSelectionEnd()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    return v0
.end method

.method public whitelist getSelectionStart()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 130
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
