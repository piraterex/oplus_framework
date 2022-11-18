.class public final Landroid/app/NotificationChannelGroup;
.super Ljava/lang/Object;
.source "NotificationChannelGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o ATT_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final greylist-max-o ATT_DESC:Ljava/lang/String; = "desc"

.field private static final greylist-max-o ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field private static final greylist-max-o TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field public static final blacklist USER_LOCKED_BLOCKED_STATE:I = 0x1


# instance fields
.field private greylist-max-o mBlocked:Z

.field private greylist-max-o mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist mId:Ljava/lang/String;

.field private greylist-max-o mName:Ljava/lang/CharSequence;

.field private blacklist mUserLockedFields:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Landroid/app/NotificationChannelGroup$1;

    invoke-direct {v0}, Landroid/app/NotificationChannelGroup$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_0
    iput-object v1, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    .line 97
    :goto_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_1
    iput-object v1, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    .line 103
    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Landroid/app/NotificationChannelGroup;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    .line 85
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannelGroup;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    .line 86
    return-void
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    return-object p1
.end method


# virtual methods
.method public greylist-max-o addChannel(Landroid/app/NotificationChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 195
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public whitelist clone()Landroid/app/NotificationChannelGroup;
    .locals 3

    .line 309
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 310
    .local v0, "cloned":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 312
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 313
    iget v1, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    .line 314
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 331
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 333
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 334
    iget-object v2, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 335
    iget-object v2, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 336
    iget-boolean v2, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 337
    iget-object v2, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 338
    .local v3, "channel":Landroid/app/NotificationChannel;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 339
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 341
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 291
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 292
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 293
    .local v2, "that":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    iget v4, v2, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    if-ne v3, v4, :cond_2

    .line 295
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 291
    .end local v2    # "that":Landroid/app/NotificationChannelGroup;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUserLockedFields()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 303
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 303
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBlocked()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    return v0
.end method

.method public blacklist lockFields(I)V
    .locals 1
    .param p1, "field"    # I

    .line 210
    iget v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    .line 211
    return-void
.end method

.method public blacklist populateFromXml(Landroid/util/TypedXmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 233
    const/4 v0, 0x0

    const-string v1, "desc"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 234
    const-string v1, "blocked"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 235
    return-void
.end method

.method public blacklist setBlocked(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .line 188
    iput-boolean p1, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    .line 189
    return-void
.end method

.method public greylist-max-o setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iput-object p1, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    .line 203
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0, p1}, Landroid/app/NotificationChannelGroup;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public whitelist toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v0, "record":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    const-string v2, "blocked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    iget v1, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    const-string v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannelGroup{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    iget-object v1, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hasDescription "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserLockedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method public blacklist unlockFields(I)V
    .locals 2
    .param p1, "field"    # I

    .line 217
    iget v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    .line 218
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    :goto_0
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 124
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannelGroup;->mChannels:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 131
    iget-boolean v0, p0, Landroid/app/NotificationChannelGroup;->mBlocked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget v0, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method

.method public blacklist writeXml(Landroid/util/TypedXmlSerializer;)V
    .locals 4
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    const-string v1, "channelGroup"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    const-string v3, "blocked"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    iget v2, p0, Landroid/app/NotificationChannelGroup;->mUserLockedFields:I

    const-string v3, "locked"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    return-void
.end method
