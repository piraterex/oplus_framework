.class public Landroid/app/assist/AssistContent;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-p mClipData:Landroid/content/ClipData;

.field private final greylist-max-p mExtras:Landroid/os/Bundle;

.field private greylist-max-p mIntent:Landroid/content/Intent;

.field private greylist-max-p mIsAppProvidedIntent:Z

.field private greylist-max-o mIsAppProvidedWebUri:Z

.field private greylist-max-p mStructuredData:Ljava/lang/String;

.field private greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 219
    new-instance v0, Landroid/app/assist/AssistContent$1;

    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 20
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 20
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 170
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v0, v2

    :cond_5
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getStructuredData()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWebUri()Landroid/net/Uri;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isAppProvidedIntent()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    return v0
.end method

.method public whitelist isAppProvidedWebUri()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    return v0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 94
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 95
    return-void
.end method

.method public greylist-max-o setDefaultIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 49
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 57
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 67
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public whitelist setStructuredData(Ljava/lang/String;)V
    .locals 0
    .param p1, "structuredData"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public whitelist setWebUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 131
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 132
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 217
    return-void
.end method

.method greylist-max-p writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    :goto_1
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    :goto_2
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 202
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    :goto_3
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 206
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    return-void
.end method
