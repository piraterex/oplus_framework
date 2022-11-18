.class public final Lcom/android/nfc/cardemulation/RegisteredAidCacheProto$AidCacheEntry;
.super Ljava/lang/Object;
.source "RegisteredAidCacheProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AidCacheEntry"
.end annotation


# static fields
.field public static final blacklist CATEGORY:J = 0x10900000002L

.field public static final blacklist DEFAULT_COMPONENT:J = 0x10b00000003L

.field public static final blacklist KEY:J = 0x10900000001L

.field public static final blacklist SERVICES:J = 0x20b00000004L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;

    .line 11
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCacheProto$AidCacheEntry;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
