.class public final Landroid/graphics/fonts/FontUpdateRequest$Family;
.super Ljava/lang/Object;
.source "FontUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest$Family;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG_FAMILY:Ljava/lang/String; = "family"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$Family$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$Family$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest$Family;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    .line 219
    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 280
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "family"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, "type":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 289
    if-ne v4, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Font;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    :cond_2
    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {v2, v1, v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 285
    .end local v4    # "type":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "name attribute is missing in family tag."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected parser state: must be START_TAG with family"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist writeFamilyToXml(Landroid/util/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Family;)V
    .locals 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "family"    # Landroid/graphics/fonts/FontUpdateRequest$Family;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 261
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 262
    .local v3, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    const-string v4, "font"

    invoke-interface {p0, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    invoke-static {p0, v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->writeToXml(Landroid/util/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Font;)V

    .line 264
    invoke-interface {p0, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    .end local v3    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 308
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 309
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 311
    .local v2, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 309
    .end local v2    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Family{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFonts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 230
    return-void
.end method
