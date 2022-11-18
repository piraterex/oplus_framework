.class public final Landroid/security/UrisToAliases;
.super Ljava/lang/Object;
.source "UrisToAliases.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/UrisToAliases;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_AUTHENTICATION_POLICY_ALIAS:Ljava/lang/String; = "policy_alias"

.field private static final blacklist KEY_AUTHENTICATION_POLICY_URI:Ljava/lang/String; = "policy_uri"

.field private static final blacklist KEY_AUTHENTICATION_POLICY_URI_TO_ALIAS:Ljava/lang/String; = "authentication_policy_uri_to_alias"


# instance fields
.field private final blacklist mUrisToAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/security/UrisToAliases$1;

    invoke-direct {v0}, Landroid/security/UrisToAliases$1;-><init>()V

    sput-object v0, Landroid/security/UrisToAliases;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "urisToAliases":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/security/UrisToAliases-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/UrisToAliases;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/UrisToAliases;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "urisToAliases":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 103
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 105
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "authentication_policy_uri_to_alias"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    const/4 v2, 0x0

    const-string/jumbo v4, "policy_uri"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 112
    .local v4, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "policy_alias"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 115
    :cond_4
    new-instance v2, Landroid/security/UrisToAliases;

    invoke-direct {v2, v0}, Landroid/security/UrisToAliases;-><init>(Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public blacklist addUriToAlias(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "alias"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    if-ne p0, p1, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    instance-of v0, p1, Landroid/security/UrisToAliases;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/security/UrisToAliases;

    .line 149
    .local v0, "other":Landroid/security/UrisToAliases;
    iget-object v1, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    iget-object v2, v0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getUrisToAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/security/UrisToAliases;->mUrisToAliases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "urisToAliases":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const-string v3, "authentication_policy_uri_to_alias"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "policy_uri"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "policy_alias"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .end local v1    # "urisToAliases":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/String;>;"
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
