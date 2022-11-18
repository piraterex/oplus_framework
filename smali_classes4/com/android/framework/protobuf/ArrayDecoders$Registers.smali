.class final Lcom/android/framework/protobuf/ArrayDecoders$Registers;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ArrayDecoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Registers"
.end annotation


# instance fields
.field public final blacklist extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field public blacklist int1:I

.field public blacklist long1:J

.field public blacklist object1:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 64
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
