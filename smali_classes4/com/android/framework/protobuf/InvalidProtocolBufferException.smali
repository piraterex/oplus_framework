.class public Lcom/android/framework/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private blacklist unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;


# direct methods
.method public constructor blacklist <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/io/IOException;

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;

    .line 55
    return-void
.end method

.method static blacklist invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 106
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 141
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .locals 2

    .line 111
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 98
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 137
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 125
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist sizeLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 131
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 84
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getUnfinishedMessage()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public blacklist setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .locals 0
    .param p1, "unfinishedMessage"    # Lcom/android/framework/protobuf/MessageLite;

    .line 64
    iput-object p1, p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/android/framework/protobuf/MessageLite;

    .line 65
    return-object p0
.end method

.method public blacklist unwrapIOException()Ljava/io/IOException;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
