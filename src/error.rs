//! Typed error module — no serde, no serialization, same binary.
//!
//! `PlanError` carries structured context for plan-phase failures
//! that downstream code can match on without string parsing.

use std::fmt;

/// Domain errors for the harvester pipeline.
#[derive(Debug)]
pub enum Error {
    /// A plan-phase failure: the query plan could not be constructed or validated.
    PlanError { context: &'static str, detail: String },
}

impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::PlanError { context, detail } => {
                write!(f, "plan error [{context}]: {detail}")
            }
        }
    }
}

impl std::error::Error for Error {}

/// Construct a `PlanError` wrapped in `anyhow::Error`.
///
/// ```ignore
/// plan_err!("cypher_gen", "missing relationship type for edge {}", edge_id)
/// ```
#[macro_export]
macro_rules! plan_err {
    ($ctx:expr, $($arg:tt)*) => {
        anyhow::anyhow!($crate::error::Error::PlanError {
            context: $ctx,
            detail: format!($($arg)*),
        })
    };
}
