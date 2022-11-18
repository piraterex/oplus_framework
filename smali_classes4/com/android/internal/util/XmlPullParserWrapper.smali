.class public Lcom/android/internal/util/XmlPullParserWrapper;
.super Ljava/lang/Object;
.source "XmlPullParserWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# instance fields
.field private final blacklist mWrapped:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "wrapped"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iput-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public whitelist test-api getAttributeCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 142
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 138
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 158
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getColumnNumber()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDepth()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .locals 1
    .param p1, "holderForStartAndLength"    # [I

    .line 114
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 57
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
