.class public final Landroid/app/search/SearchAction;
.super Ljava/lang/Object;
.source "SearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SearchAction"


# instance fields
.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Landroid/app/search/SearchAction$1;

    invoke-direct {v0}, Landroid/app/search/SearchAction$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    .line 75
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 76
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 77
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 78
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 79
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mIntent:Landroid/content/Intent;

    .line 80
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mUserHandle:Landroid/os/UserHandle;

    .line 81
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mExtras:Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "subtitle"    # Ljava/lang/CharSequence;
    .param p5, "contentDescription"    # Ljava/lang/CharSequence;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "userHandle"    # Landroid/os/UserHandle;
    .param p9, "extras"    # Landroid/os/Bundle;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    .line 95
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    .line 96
    iput-object p3, p0, Landroid/app/search/SearchAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 97
    iput-object p4, p0, Landroid/app/search/SearchAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 98
    iput-object p5, p0, Landroid/app/search/SearchAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 99
    iput-object p6, p0, Landroid/app/search/SearchAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 100
    iput-object p7, p0, Landroid/app/search/SearchAction;->mIntent:Landroid/content/Intent;

    .line 101
    iput-object p8, p0, Landroid/app/search/SearchAction;->mUserHandle:Landroid/os/UserHandle;

    .line 102
    iput-object p9, p0, Landroid/app/search/SearchAction;->mExtras:Landroid/os/Bundle;

    .line 104
    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one type of intent should be available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    if-nez p7, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one type of intent should be available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    :goto_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/app/search/SearchAction-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/search/SearchAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 179
    :cond_0
    instance-of v1, p1, Landroid/app/search/SearchAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 180
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/search/SearchAction;

    .line 181
    .local v1, "that":Landroid/app/search/SearchAction;
    iget-object v3, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/app/search/SearchAction;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/app/search/SearchAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/app/search/SearchAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/app/search/SearchAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/app/search/SearchAction;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/app/search/SearchAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/app/search/SearchAction;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    iget-object v1, p0, Landroid/app/search/SearchAction;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/search/SearchAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget-object v0, p0, Landroid/app/search/SearchAction;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroid/app/search/SearchAction;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 198
    iget-object v0, p0, Landroid/app/search/SearchAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Landroid/app/search/SearchAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 200
    iget-object v0, p0, Landroid/app/search/SearchAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 201
    iget-object v0, p0, Landroid/app/search/SearchAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v0, p0, Landroid/app/search/SearchAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Landroid/app/search/SearchAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    iget-object v0, p0, Landroid/app/search/SearchAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    return-void
.end method
