.class final Lcom/android/framework/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist output:Lcom/android/framework/protobuf/CodedOutputStream;


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 1169
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    .line 1170
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/framework/protobuf/ByteString$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/framework/protobuf/ByteString$1;

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/framework/protobuf/ByteString;
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 1178
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    return-object v0
.end method
