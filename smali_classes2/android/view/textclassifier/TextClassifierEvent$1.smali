.class Landroid/view/textclassifier/TextClassifierEvent$1;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/TextClassifierEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassifierEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, "token":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 216
    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    invoke-direct {v2, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent-IA;)V

    return-object v2

    .line 218
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 219
    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    invoke-direct {v2, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent-IA;)V

    return-object v2

    .line 221
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 222
    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    invoke-direct {v2, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent-IA;)V

    return-object v2

    .line 224
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 225
    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;

    invoke-direct {v2, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent-IA;)V

    return-object v2

    .line 227
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected input event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/textclassifier/TextClassifierEvent;
    .locals 1
    .param p1, "size"    # I

    .line 232
    new-array v0, p1, [Landroid/view/textclassifier/TextClassifierEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$1;->newArray(I)[Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object p1

    return-object p1
.end method
