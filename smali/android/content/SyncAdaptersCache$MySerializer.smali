.class Landroid/content/SyncAdaptersCache$MySerializer;
.super Ljava/lang/Object;
.source "SyncAdaptersCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncAdaptersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/SyncAdapterType;
    .locals 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    const-string v1, "authority"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "authority":Ljava/lang/String;
    const-string v2, "accountType"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic blacklist createFromXml(Landroid/util/TypedXmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Landroid/content/SyncAdaptersCache$MySerializer;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/SyncAdapterType;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeAsXml(Landroid/content/SyncAdapterType;Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p1, "item"    # Landroid/content/SyncAdapterType;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "authority"

    invoke-interface {p2, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    iget-object v0, p1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    const-string v2, "accountType"

    invoke-interface {p2, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    return-void
.end method

.method public bridge synthetic blacklist writeAsXml(Ljava/lang/Object;Landroid/util/TypedXmlSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2}, Landroid/content/SyncAdaptersCache$MySerializer;->writeAsXml(Landroid/content/SyncAdapterType;Landroid/util/TypedXmlSerializer;)V

    return-void
.end method
