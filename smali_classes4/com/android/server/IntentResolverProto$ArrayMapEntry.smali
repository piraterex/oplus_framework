.class public final Lcom/android/server/IntentResolverProto$ArrayMapEntry;
.super Ljava/lang/Object;
.source "IntentResolverProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArrayMapEntry"
.end annotation


# static fields
.field public static final blacklist KEY:J = 0x10900000001L

.field public static final blacklist VALUES:J = 0x20900000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/IntentResolverProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/IntentResolverProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/IntentResolverProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/IntentResolverProto$ArrayMapEntry;->this$0:Lcom/android/server/IntentResolverProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
