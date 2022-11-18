.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/PersistableBundle;

.field private static final greylist-max-o TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 60
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 236
    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 88
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 121
    invoke-virtual {p1}, Landroid/os/Bundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    .line 122
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 156
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 102
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 103
    iget v0, p1, Landroid/os/PersistableBundle;->mFlags:I

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 104
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;Z)V
    .locals 0
    .param p1, "from"    # Landroid/os/PersistableBundle;
    .param p2, "deep"    # Z

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 168
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 135
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    .line 138
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 139
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 140
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/util/ArrayMap;

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/util/ArrayMap;

    invoke-direct {v4, v5}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 144
    :cond_0
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_1
    invoke-static {v2}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad value in PersistableBundle key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 148
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public static greylist-max-o forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 177
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v0
.end method

.method public static greylist-max-o isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, [I

    if-nez v0, :cond_1

    instance-of v0, p0, [J

    if-nez v0, :cond_1

    instance-of v0, p0, [D

    if-nez v0, :cond_1

    instance-of v0, p0, [Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 411
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 412
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 413
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 414
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .locals 6
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 318
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 319
    .local v0, "outerDepth":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "startTag":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 322
    .local v3, "tagName":[Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "event":I
    if-eq v4, v2, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 323
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v0, :cond_2

    .line 324
    :cond_1
    const/4 v4, 0x2

    if-ne v5, v4, :cond_0

    .line 325
    new-instance v2, Landroid/os/PersistableBundle;

    new-instance v4, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v4}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    .line 326
    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    .line 325
    return-object v2

    .line 330
    :cond_2
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    return-object v2
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 312
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1

    .line 187
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/PersistableBundle;
    .locals 2

    .line 198
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 364
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 366
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_0

    .line 368
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 373
    :cond_1
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 376
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 377
    return-void
.end method

.method public whitelist getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 224
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    return-object v1

    .line 229
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 232
    return-object v1
.end method

.method public whitelist putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/PersistableBundle;

    .line 209
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 210
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public blacklist saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 1
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 271
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 272
    return-void
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 266
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 356
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 359
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 343
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-object v0

    .line 347
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 303
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 306
    nop

    .line 307
    return-void

    .line 305
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 306
    throw v1
.end method

.method public whitelist writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 388
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    const-string v2, "bundle"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    nop

    .line 395
    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 397
    return-void

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    const-string/jumbo v1, "pbundle_as_map"

    invoke-interface {p3, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const-string/jumbo v2, "name"

    invoke-interface {p3, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v2, p3}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 257
    invoke-interface {p3, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Object o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
