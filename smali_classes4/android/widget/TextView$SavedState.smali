.class public Landroid/widget/TextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/TextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o editorState:Landroid/os/ParcelableParcel;

.field greylist-max-o error:Ljava/lang/CharSequence;

.field greylist-max-o frozenWithFocus:Z

.field greylist-max-o selEnd:I

.field greylist-max-o selStart:I

.field greylist text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 14001
    new-instance v0, Landroid/widget/TextView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TextView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 14013
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 13954
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 13955
    iput v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 14014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 14015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 14016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 14017
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 14019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 14020
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 14023
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14024
    sget-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableParcel;

    iput-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 14026
    :cond_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/TextView$SavedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 13963
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 13954
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 13955
    iput v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 13964
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 13991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13992
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13994
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 13995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13997
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 13968
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13969
    iget v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13970
    iget v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13971
    iget-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13972
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 13974
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 13975
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 13977
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13978
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 13981
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-nez v0, :cond_1

    .line 13982
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 13984
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13985
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelableParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13987
    :goto_1
    return-void
.end method
