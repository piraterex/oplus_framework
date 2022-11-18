.class final Lcom/android/framework/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "NewInstanceSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/NewInstanceSchema;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "defaultInstance"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    return-object v0
.end method
