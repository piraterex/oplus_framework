.class public final Lcom/android/server/location/ClientManagerProto$RegistrationRecord;
.super Ljava/lang/Object;
.source "ClientManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ClientManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegistrationRecord"
.end annotation


# static fields
.field public static final blacklist ACTION:J = 0x10500000002L

.field public static final blacklist BROKER:J = 0x10900000003L

.field public static final blacklist TIMESTAMP_MS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/location/ClientManagerProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/location/ClientManagerProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ClientManagerProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/location/ClientManagerProto$RegistrationRecord;->this$0:Lcom/android/server/location/ClientManagerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
