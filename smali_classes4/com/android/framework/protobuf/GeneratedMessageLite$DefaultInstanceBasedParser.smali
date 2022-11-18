.class public Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/android/framework/protobuf/AbstractParser;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/android/framework/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1498
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractParser;-><init>()V

    .line 1499
    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 1500
    return-void
.end method


# virtual methods
.method public blacklist parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1505
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1512
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1493
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method
